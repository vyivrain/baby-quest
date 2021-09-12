<App>
  <div class="background" style="background-image: url({imagePath('background3')});">
    <div class="container">
      <p>
        "Хех, це був легкий вибір зробити висновок, що потрібно накивати п'ятами звідси".<br>
        Я почесала затилок усміхаючись.
      </p>
      <p>
      "Ой, больно", відчувши там гулю. Звідки вона взялася, не знаю, але треба рухатися далі.
      </p>
      <p>
        В кімнаті висіла одна велика картина. Підписано X-им століттям.
      </p>
      <div class="image-block">
        <img class="image" src={imagePath('talking')} alt="" on:click={() => { showTalkingModal = true }} />
      </div>
      <p>
        Зверху від картини щось написано: <span class="italic-text">"Що розказує жінка чоловіку?"</span>. Ще одна загадка.
      </p>
      <p>
        Під нею була ще одна картина. Менша, виглядала, як підказка до основної картини.
      </p>
      <div class="image-block">
        <img class="image" src={imagePath('bowing-egypt')} alt="" on:click={() => { showBowingModal = true }} />
      </div>
      <p>
        Під картиною був написаний уривок:<br>
        <span class="italic-text">
        "Дякую тобі за новий день о Ра, це вже 1001 раз сонце стоїть над обрієм. І ти радуєш нас своїм золотим ликом ще раз, відправляючи нас на відпочинок."
        </span>
      </p>
      <p>
        На дверях мене чекає новий старий друг - замок на 5 літер.
      </p>

      <p>(Відповідь слово кирилицею)</p>
      <AnswerForm questId={questId} />
    </div>
  </div>

  <ImageModal bind:shown={showTalkingModal} image={imagePath('talking')} />
  <ImageModal bind:shown={showBowingModal} image={imagePath('bowing-egypt')} />
</App>

<script>
  import App from "../components/App"
  import AnswerForm from "../components/AnswerForm"
  import ImageModal from "../components/ImageModal"
  import { imagePath } from "../lib/helpers"

  export let questId
  let showTalkingModal = false
  let showBowingModal = false
</script>

<style lang="scss">
  * {
    line-height: 25px;
  }

  .italic-text {
    font-style: italic;
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

  .image-block {
    text-align: center;

    .image {
      height: 150px;
      cursor: pointer;
    }
  }
</style>
