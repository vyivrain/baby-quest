<div class="button-group">
  <input type="text" bind:value={answer} on:keyup|preventDefault={submitEnterAnswer} />
  <button class="button-margin" type="button" on:click={submitAnswer.bind(this)}>Відповісти</button>
</div>
<div class={errorClass}>{error}</div>

<script>
  import Api from "../api/api"

  export let questId

  let answerSubmitPath = `/quests/${questId}`
  let answer = ''
  let error = ''
  let errorClass = 'hide-error'

  function submitAnswer() {
    Api.post(answerSubmitPath, {
      headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
      body: { answer: answer },
      success: (response) => {
        if(response.answerResult) {
          error = ''
          errorClass = 'hide-error'
          Api.redirect(response.url)
        }
        else {
          error = 'Неправильна відповідь'
          errorClass = 'show-error'
        }
      },
    })
  }

  function submitEnterAnswer() {
    if(event.code == 'Enter') {
      submitAnswer()
    }
  }
</script>

<style lang="scss">
  .show-error {
    display: block;
  }

  .hide-error {
    display: none;
  }

  .button-group {
    display: flex;
  }

  .button-margin {
    margin-left: 8px;
  }

  input {
    line-height: 28px;
    font-size: 20px;
    border-radius: 10px;
    background-color: transparent;
    outline: none;
  }

  button {
    font-size: 15px;
    background: #AF9146;
    border: 3px solid #92793A;
    border-radius: 10px;
    padding: 5px 10px;
    cursor: pointer;

    &:hover {
      background-color: darken(#AF9146, 10%);
      border: 3px solid darken(#92793A, 10%);
    }
  }
</style>
