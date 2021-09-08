defmodule FlyWeb.Components.Loading do
  @moduledoc false

  use Phoenix.Component
  use Phoenix.HTML
  import Phoenix.LiveView.Helpers

  def render(assigns) do
    ~H"""
    <style>
    .fluentProgressBar-normal {
    background-color: #0078d4;
    height: 4px;
    }

    .fluentProgressBar-waiting {
    background: rgba(0,120,212,0);
    background: -moz-linear-gradient(left, rgba(0,120,212,0) 0%, rgba(0,120,212,1) 51%, rgba(0,120,212,0) 100%);
    background: -webkit-gradient(left top, right top, color-stop(0%, rgba(0,120,212,0)), color-stop(51%, rgba(0,120,212,1)), color-stop(100%, rgba(0,120,212,0)));
    background: -webkit-linear-gradient(left, rgba(0,120,212,0) 0%, rgba(0,120,212,1) 51%, rgba(0,120,212,0) 100%);
    background: -o-linear-gradient(left, rgba(0,120,212,0) 0%, rgba(0,120,212,1) 51%, rgba(0,120,212,0) 100%);
    background: -ms-linear-gradient(left, rgba(0,120,212,0) 0%, rgba(0,120,212,1) 51%, rgba(0,120,212,0) 100%);
    background: linear-gradient(to right, rgba(0,120,212,0) 0%, rgba(0,120,212,1) 51%, rgba(0,120,212,0) 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#0078d4', endColorstr='#0078d4', GradientType=1 );

      	height: 4px;

        -webkit-animation: progressBarAnimation 2s linear infinite;
    animation: progressBarAnimation 2s linear infinite;
    }

    @keyframes progressBarAnimation {
    0% {
    left: -50%;
    }
    100% {
    left: 100%;
    }
    }
    </style>


    <div class="w-full">
    <!-- Waiting... -->
    <div class="w-full overflow-hidden mt-32">
    	<div class="w-1/2 inline-block relative fluentProgressBar-waiting"></div>
    </div>
    </div>
    """
  end
end
