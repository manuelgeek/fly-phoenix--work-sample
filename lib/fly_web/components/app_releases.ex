defmodule FlyWeb.Components.AppReleases do
  @moduledoc false

  use Phoenix.Component
  use Phoenix.HTML
  import Phoenix.LiveView.Helpers

  def render(assigns) do
    ~H"""
    <section aria-labelledby="timeline-title" class="lg:col-start-3 lg:col-span-1">
        <div class="bg-white px-4 py-5 shadow sm:rounded-lg sm:px-6">
          <h2 id="timeline-title" class="text-lg font-medium text-gray-900">Timeline</h2>

          <!-- Activity Feed -->
          <div class="mt-6 flow-root">
            <ul role="list" class="-mb-8">
              <%=if length(@releases) > 0 do %>
                <%= for release <- @releases do %>
                  <li>
                    <div class="relative pb-8">
                      <div class="relative flex space-x-3">
                        <div>
                          <span class="h-8 w-8 rounded-full bg-gray-400 flex items-center justify-center ring-8 ring-white">
                            <%= if not is_nil(release["user"]) do %>
                              <img class="inline-block h-8 w-8 rounded-full" src={release["user"]["avatarUrl"]} alt="">
                            <% else %>
                              <!-- Heroicon name: solid/user -->
                              <svg class="w-5 h-5 text-white" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                <path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd" />
                              </svg>
                            <% end %>
                          </span>
                        </div>
                        <div class="min-w-0 flex-1 pt-1.5 flex justify-between space-x-4">
                          <div>
                            <p class="text-sm text-gray-500">v<%= release["version"] %></p>
                          </div>
                          <%= if release["stable"] do %>
                            <p class="text-green-800">
                              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                                <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                              </svg>
                            </p>
                          <% else %>
                            <p class="text-red-800">
                              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                                <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zM8.707 7.293a1 1 0 00-1.414 1.414L8.586 10l-1.293 1.293a1 1 0 101.414 1.414L10 11.414l1.293 1.293a1 1 0 001.414-1.414L11.414 10l1.293-1.293a1 1 0 00-1.414-1.414L10 8.586 8.707 7.293z" clip-rule="evenodd" />
                              </svg>
                            </p>
                          <% end %>
                          <div>
                            <p class="text-sm text-gray-500"><%= release["reason"] %></p>
                          </div>
                          <div class="text-right text-sm whitespace-nowrap text-gray-500">
                            <time datetime="2020-09-20"><%= release["createdAt"] %></time>
                          </div>
                        </div>
                      </div>
                    </div>
                  </li>
                <% end %>
              <% else %>
                <li class="py-2">
                  <p class="p-3">No Releases yet !</p>
                </li>
              <% end %>
            </ul>
          </div>
        </div>
      </section>
      """
    end
end
