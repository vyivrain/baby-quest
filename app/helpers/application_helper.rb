module ApplicationHelper
  def quest_chooser
    case params[:id]
    when 'cbd456b8f38004a8'
      svelte_component('Quest1', { questId: "#{params[:id]}" })
    when '081c07e4438bace1'
      svelte_component('Quest2', { questId: "#{params[:id]}" })
    when 'f87f2b2b1222f818'
      svelte_component('Quest3', { questId: "#{params[:id]}" })
    when 'a9491f0d95dca96c'
      svelte_component('Quest4', { questId: "#{params[:id]}" })
    when '5eaf308ea58d7f50'
      svelte_component('Quest5', { questId: "#{params[:id]}" })
    end
  end
end
