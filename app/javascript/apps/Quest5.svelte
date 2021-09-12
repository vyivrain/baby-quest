<App>
  <div class="background" style="background-image: url({imagePath('background5')});">
    <div class="container">
      <p>
        Картина стала чіткою. Я стояла за дюжину метрів від свого дому.<br>
        Відчинені двері були входом до одного з підвалів, в якому я не була.
      </p>
      <p>
        На очах сльози. Я згадала останні слова батька перед тим як він відправився в свою подорож напередодні
        мого день народження в дитинстві. "В бібліотеці схований мій подарунок тобі". В той час я хотіла відправитися з ним,
        але була ще занадто малою.
      </p>
      <p>
        Перед виходом, на бетоні я найшла старий щоденник. Ну що ж пора і мені відправитися у подорож.
      </p>
      <p>
        <button on:click={() => { showBaby = true }}>Сюрприз</button>
      </p>
    </div>

    <ImageModal bind:shown={showBaby} image={imagePath('gif')} cssClasses={'big'} />
  </div>
</App>

<script>
  import App from "../components/App"
  import AnswerForm from "../components/AnswerForm"
  import ImageModal from "../components/ImageModal"
  import { imagePath } from "../lib/helpers"

  export let questId
  let showBaby = false
</script>

<style lang="scss">
  * {
    line-height: 25px;
  }

  .hidden {
    display: none;
  }

  .container {
    width: 60%;
    margin: 0 auto;

    p:first-child {
      margin-top: 0;
    }
  }

  .background {
    background-size: 100% 100%;
    background-repeat: no-repeat;
    min-height: 100vh;
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
