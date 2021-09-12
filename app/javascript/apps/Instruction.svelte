<App>
  <div class="background" style="background-image: url({imagePath('background1')});">
    <div class="container">
      <div class="title">Вас вітає квест Lullaby</div>

      <div class="medium-title">Інструкція:</div>
      <ul>
        <li>У кожному завданні описується ситуація. Уважно прочитайте та введіть в полі унизу сторінки і натисніть "Відповісти"</li>
        <li>Для виконання завдання керуйтеся загальними знаннями, асоціаціями та пошуком інформації в інтернеті</li>
      </ul>

      <p class="medium-title">Бажаю хорошої ігри</p>

      <p class="medium-title">Для того щоб почати введіть в полі Lullaby:</p>
      <AnswerForm questId={questId} />
    </div>
  </div>
</App>

<script>
  import App from "../components/App"
  import AnswerForm from "../components/AnswerForm"
  import { imagePath } from "../lib/helpers"

  export let questId
</script>

<style lang="scss">
  .title {
    font-size: 30px;
    padding-top: 20px;
    text-align: center;
  }

  .medium-title {
    font-size: 24px;
    margin-top: 24px;
  }

  .container {
    width: 60%;
    margin: 0 auto;
  }

  .background {
    background-size: 100% 100%;
    background-repeat: no-repeat;
    min-height: 100vh
  }

  ul li {
    line-height: 30px;
  }
</style>
