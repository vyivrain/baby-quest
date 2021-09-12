class Api {
  constructor() {
    const protocol = window.location.protocol
    const host = window.location.host
    this.host = `${protocol}//${host}`
  }

  get(endpoint, options) {
    let params = new URLSearchParams(options.params)

    this.request(`${endpoint}?${params}`, 'GET', options)
  }

  post(endpoint, options) {
    this.request(endpoint, 'POST', options)
  }

  redirect(url) {
    window.location = url
  }

  request(endpoint, method, options) {
    let responseStatus

    const requestOptions = {
      method: method,
      headers: { ...this.defaultHeaders(), ...options.headers },
      body: this.requestBody(options)
    }

    const callbacks = {
      success: options.success || function() {},
      error: options.error || function() {}
    }

    fetch(this.host + endpoint, requestOptions).then(response => {
      responseStatus = response.status

      return response.json()
    }).then(response => {
      switch(responseStatus) {
        case 200:
        case 201:
        case 304:
          callbacks.success(response)
          break
        case 400:
        case 401:
        case 422:
        case 500:
          callbacks.error(response)
          break
        default:
          console.log('Unhandled error')
          break
      }
    })
  }

  defaultHeaders() {
    return {
      'X-CSRF-Token': this.csrfToken()
    }
  }

  csrfToken() {
    let metaToken = document.querySelector('meta[name="csrf-token"]')
    return metaToken ? metaToken.content : ''
  }

  requestBody(options) {
    if(options.body instanceof FormData) {
      return options.body
    }
    else if(options.headers && options.headers['Content-Type'] == 'application/x-www-form-urlencoded') {
      return this.serializeQuery(options.body)
    }
    else {
      return JSON.stringify(options.body)
    }
  }

  serializeQuery(params, prefix) {
    const query = Object.keys(params).map((key) => {
      const value  = params[key]

      if (params.constructor === Array)
        key = `${prefix}[]`
      else if (params.constructor === Object)
        key = (prefix ? `${prefix}[${key}]` : key)

      if (typeof value === 'object')
        return serializeQuery(value, key);
      else
        return `${key}=${encodeURIComponent(value)}`
    })

    return [].concat.apply([], query).join('&')
  }
}

export default new Api
