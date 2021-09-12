<Modal bind:shown={shown} cssClasses={cssClasses}>
  <img src="{image}" alt="" class="image {cssClasses}" />
</Modal>

<script>
  import Modal from "../components/Modal"

  export let image
  export let shown
  export let cssClasses
</script>

<style lang="scss">
  .image {
    width: 400px;
  }

  .big {
    width: 600px;
  }
</style>
