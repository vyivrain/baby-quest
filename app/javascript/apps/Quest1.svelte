<App>
  <div class="background" style="background-image: url({imagePath('background3')});">
    <div class="container">
      <p>
        Розтерши очі, я побачила звичайну на перший погляд кімнату. Наступної миті, замітила, відсутні вікна і навколо не оброблені стіни.<br>
        Червоні нетесані цеглини з'єднані цементом. Нічого не нагадувало щось знайоме чи рідне.<br>
        Повністю розплющивши очі, побачила писемний столик з старим дерев'яним кріслом і двері замкнені на замок.<br>
        Я взяла листок паперу з столу.<br>
      </p>
      <p class="italic-text">
          Де ти є? Сид-<br>
          иш, дивишся за горизонт, де<br>
          темніє нов-<br>
          ий ряд пелюсток.<br>
          На одній руці шрам, в іншій зв*язка ключей<br>
          А двері стоять за 10 довгих верствей.<br>

          Коліна болять, не хочеться йти<br>
          Але мрії стоять позаду масивної стіни<br>
          І вирішуєш тільки ти.<br>
      </p>
      <p>
        Підписано "Для дорогої доні". Невпевнена для чиєї дочки це написано. І взагалі, потрібно шукати вихід.<br>
        Направившись до дверей, я замітила незвичайний замок. В ньому знаходилися п'ять шестерней для регулювання букв.<br>
        Слово чи набір букв, який там був <span class="italic-text">"БРІВИ".</span><br>
        Загадка? Хтось хоче погратися зі мною? Треба швидше вибиратися звідси.<br>
      </p>
      <p>Видно, основна підказка це вірш на цьому папері.</p>

      <p>
        Я звернула погляд на стіни. Там висіли декілька картин.
        Перша: фото жінки, підписано <span class="italic-text">"Анна"</span>. Друга: фото вагів, підписано <span class="italic-text">"Грам"</span>.<br>
        Третя: 3 популярних Американських шосе: <span class="italic-text">"Highway 12", "Route 66", "Great River Road".</span>
      </p>

      <p>Що це все може означати? Воно чимось зв'язане з тим віршем?</p>
      <p>(Відповідь слово кирилицею)</p>
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
  * {
    line-height: 25px;
  }

  .container {
    width: 60%;
    margin: 0 auto;
  }

  .background {
    background-size: 100% 100%;
    background-repeat: no-repeat;
    min-height: 100vh;
  }

  .italic-text {
    font-style: italic;
  }

  .bold-text {
    font-weight: 700;
  }
</style>
