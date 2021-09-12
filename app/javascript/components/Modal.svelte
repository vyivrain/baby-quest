{#if shown}
  <div class="modal">
    <div class="backdrop" on:click={hide}></div>
    <div class="wrapper">
      <div class="box {cssClasses}">
        <div class="body">
          <slot></slot>
        </div>
      </div>
    </div>
  </div>
{/if}

<script>
  export let shown
  export let cssClasses

  $: shown
  $: {
    const body = document.querySelector('body').classList

    if (shown) {
      body.add('lock')
    } else {
      body.remove('lock')
    }
  }

  function hide() {
    shown = false
    document.querySelector('body').classList.remove('lock')
  }
</script>

<style lang="scss">
  .modal {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 10;
    overflow-y: scroll;
    overflow: hidden;
  }

  .backdrop {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: transparentize(#142a4e, 0.5);
    z-index: 2;
  }

  .wrapper {
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 30px 0;
  }

  .box {
    display: flex;
    border-radius: var(--border-radius);
    width: 400px;
    z-index: 3;
  }

  .content {
    width: 100%;
  }

  .lock {
    overflow: hidden;
  }

  .big {
    width: 600px
  }
</style>
