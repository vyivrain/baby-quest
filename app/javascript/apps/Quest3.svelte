<App>
  <div class="background" style="background-image: url({imagePath('background4')});">
    <div class="container">
      <p>
        Казки.<br>
        Відразу ж моє тіло і розум пронизала ностальгія до дитинства. Мої забаганки, ігри .. І пошуки?
      </p>

      <p>
        Я щось шукала, поки не попала сюди.<br>
        Але що ж?
      </p>
      <p>
        Ще одна кімната. Я найду відповіді, як вийду.
      </p>

      <p>
        Посередині кімнати був чийсь портрет і стіл.
      </p>

      <div class="image-block">
        <img class="image" src={imagePath('famous')} alt="" on:click={() => { showManModal = true }} />
      </div>
      <p>
        Я пам'ятаю цей портрет. Такий же був у моїй, що ж це було ... Так, в бібліотеці!<br>
        Перед тим, як я попала сюди, я була в бібліотеці. Але ще є пробіл, як я опинилася тут.
      </p>
      <p>
        На столі палочки і вирізані заглиблення куди їх можна поставити. Розміри заглиблень одинакові.<br>
        Думаю, потрібно помістити ці палички у правильному порядку.
      </p>
      <div class="image-block">
        <img class="image" src={imagePath('step')} alt="" on:click={() => { showStepModal = true }} />
      </div>
      <p>
        На підлозі лежала маленька записка <span class="italic-text">"Це самий нормальний поділ, який я бачив".</span><br>
        Таке враження, що хтосьб насміхається з мене.
      </p>
      <p>
        На цей раз на протилежних дверях був замок. Десь потрібно найти ключ.
      </p>

      <p>(Відповідь послідовність цифр)</p>
      <AnswerForm questId={questId} />
    </div>
  </div>

  <ImageModal bind:shown={showManModal} image={imagePath('famous')} />
  <ImageModal bind:shown={showStepModal} image={imagePath('step')} />
</App>

<script>
  import App from "../components/App"
  import AnswerForm from "../components/AnswerForm"
  import ImageModal from "../components/ImageModal"
  import { imagePath } from "../lib/helpers"

  export let questId
  let showManModal = false
  let showStepModal = false
</script>

<style lang="scss">
  * {
    line-height: 25px;
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

  .italic-text {
    font-style: italic;
  }
</style>
