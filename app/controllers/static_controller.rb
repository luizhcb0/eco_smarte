class StaticController < ApplicationController
  include StrongParamsHolder
  
  def index
    @images = ["eco_0.jpg", "eco_1.jpg", "eco_2.jpg", "eco_3.jpg", "eco_4.jpg", "eco_5.jpg"]
    @describe_text = Text.find_by(id: 1)
  end
  
  def pool_spa_help

  end
  
  def tutorial
    @tutorial = params[:tutorial]
  end
  
  def basics_partials
    render partial: "basics_partials"
  end
  
  def international
    @contact_mail = Contact.new
    @contact = ContactMessage.new
  end
  
  def international_mail
    @contact_mail = Contact.new(contact_params)
    @contact = ContactMessage.new(contact_params)
    @contact_mail.request = request
    if @contact_mail.deliver && @contact.save
      flash[:success] = "Thank you for your message. We will contact you soon!"
      redirect_to root_path
    else
      flash[:error] = "Cannot send message."
      render :new
    end
  end
  
  def quiz
    @quiz_1 = {
      '1' => { 
        question: '1. What is the optimal level for copper in a pool or spa system?',
        answers: {
          'A' => 'a. 0.1 - 0.3 ppm',
          'B' => 'b. 0.3 - 0.5 ppm',
          'C' => 'c. 0.4 - 0.7 ppm',
          'D' => 'd. 3.0 - 7.0 ppm'
        },
        correct: 'C'
      },
      '2' => {
        question: '2. Why is it important not to backwash too frequently?',
        answers: {
          'A' => 'a. The pump may burn out',
          'B' => 'b. The filter will not be able to catch the smaller particles',
          'C' => 'c. Backwashing is hard on the filter'
        },
        correct: 'B'
      },
      '3' => {
        question: '3. What is the optimal level of calcium in a pool or spa system?',
        answers: {
          'A' => 'a. 0 - 400 ppm',
          'B' => 'b. 200 - 300 ppm',
          'C' => 'c. 1000 ppm maximum',
          'D' => 'd. 400 ppm minimum'
        },
        correct: 'D'
      },
      '4' => {
        question: '4. If the pool does not need more copper, what should the controller be set to?',
        answers: {
          'A' => 'a. Oxidize/High',
          'B' => 'b. Ionize/Low',
          'C' => 'c. Ionize/High',
          'D' => 'd. Oxidize/Low'
        },
        correct: 'A'
      },
      '5' => {
        question: '5. What can happen if pH is too high?',
        answers: {
          'A' => 'a. Copper ions rendered ineffective',
          'B' => 'b. Water becomes crystal clear and green',
          'C' => 'c. The filter will need to be backwashed'
        },
        correct: 'A'
      },
      '6' => {
        question: '6. What is the optimal level of phosphates in a pool or spa system?',
        answers: {
          'A' => 'a. 0 - 400 ppm',
          'B' => 'b. 0 - 100 ppb',
          'C' => 'c. 100 - 500 ppb',
          'D' => 'd. 200 - 300 ppb',
          'E' => 'e. 400 ppb minimum'
        },
        correct: 'B'
      },
      '7' => {
        question: '7. What do phosphates do to the water?',
        answers: {
          'A' => 'a. Kill algae',
          'B' => 'b. Add conductivity',
          'C' => 'c. Feed Algae',
          'D' => 'd.	Stabilize copper in the water'
        },
        correct: 'C'
      },
      '8' => {
        question: '8. What is the optimal level of pH in a pool or spa system?',
        answers: {
          'A' => 'a. 5.0 - 6.0',
          'B' => 'b. 6.8 - 7.2',
          'C' => 'c. 7.2 - 7.4',
          'D' => 'd. 7.8 - 8.2'
        },
        correct: 'B'
      },
      '9' => {
        question: '9. When should muriatic acid be added to the pool?',
        answers: {
          'A' => 'a. If copper needs to be raised',
          'B' => 'b. If phosphates need to be lowered',
          'C' => 'c. If pH needs to be lowered',
          'D' => 'd. If calcium needs to be raised'
        },
        correct: 'C'
      },
      '10' => {
        question: '10. What does calcium do to the water?',
        answers: {
          'A' => 'a. Kill algae',
          'B' => 'b. Buffers pH',
          'C' => 'c. Feed algae',
          'D' => 'd. Stabilize copper in the water'
        },
        correct: 'B'
      }
    }
    @quiz_2 = {
      '1' => { 
        question: '1. What do I do if my copper level is stuck at 0.3 ppm and not rising even when ionizing? pH is 7.4, calcium is 450 ppm and phosphate is 0 ppb ?.',
        answers: {
          'A' => 'a. Lower Calcium 400 by adding calcium flakes',
          'B' => 'b. Set controller to oxidize',
          'C' => 'c. Raise pH to 7.8 by adding baking soda',
          'D' => 'd. Lower pH to 6.8 by Muriatic acid'
        },
        correct: 'D'
      },
      '2' => {
        question: '2. What do I do if the pool appears crystal clear and green? pH is 6.0, Copper is 0.5 ppm, Calcium is 425 ppm, and Phosphate is at 0 ppb ?.',
        answers: {
          'A' => 'a. pH is low, raise pH to 6.8 using baking soda',
          'B' => 'b. Set the controller to oxidize',
          'C' => 'c. Set controller to Ionize',
          'D' => 'd. Raise calcium to 500 ppm using calcium flakes'
        },
        correct: 'A'
      },
      '3' => {
        question: '3. What do I do if copper level is stuck at 0.3 ppm and not rising even when ionizing? pH is 7.0, calcium is 150 ppm and phosphate is 0 ppb ?.',
        answers: {
          'A' => 'a. Lower pH to 6.8 by adding muriatic acid',
          'B' => 'b. Raise calcium to 400 ppm by adding calcium flakes',
          'C' => 'c. Set controller to oxidize',
          'D' => 'd. Add a non-metallic algaecide 60'
        },
        correct: 'B'
      },
      '4' => {
        question: '4. What do I do if the pool is cloudy but no algae is present? pH is 7.0, copper is 0.6, calcium is 450 ppm and phosphate is 300 ppb ?.',
        answers: {
          'A' => 'a. Add a non-chlorine shock',
          'B' => 'b. Deep clean the filter overnight with bleach',
          'C' => 'c. Set controller to ionize',
          'D' => 'd. Lower phosphate level to 0 by using a recommended phosphate remover'
        },
        correct: 'D'
      },
      '5' => {
        question: '5. What do I do if my pool is cloudy? I just started up for the spring, the water is 64F, pH is 6.8, copper is 0.5, calcium is 425 ppm, and phosphates are at 50 ppb ?.',
        answers: {
          'A' => 'a. Lower phosphate level to 0 by using a recommended phosphate remover',
          'B' => 'b. Add a non-metallic algaecide 60',
          'C' => 'c. Cold water can remain cloudy until reaching 70F',
          'D' => 'd. Set controller to ionize and lower pH with acid'
        },
        correct: 'C'
      },
      '6' => {
        question: '6. I have had a lot of rain and now my pool looks cloudy and dark green. pH is 6.8, copper is 0.2, calcium is 200 ppm and phosphate is 400 ppb ?',
        answers: {
          'A' => 'a. Lower pH to 6.6 by adding muriatic acid',
          'B' => 'b. Raise calcium to 400 ppm by adding calcium flakes',
          'C' => 'c. Lower phosphate level to 0 by using a recommended phosphate remover',
          'D' => 'd. Set controller to ionize',
          'E' => 'e. b, c, and d',
          'F' => 'f. All of the above'
        },
        correct: 'E'
      },
      '7' => {
        question: "7. My daughter's blonde hair has turned green after swimming in the pool, how can I prevent this? pH is 6.9, copper is 0.7, calcium is 200 ppm, and phosphate is 0 ?",
        answers: {
          'A' => 'a. High copper can cause green hair, lower to 0.5 ppm',
          'B' => 'b. Add non-chlorine shock',
          'C' => 'c. Low calcium can cause green hair, raise calcium to 400 ppm minimum',
          'D' => 'd. a and c ',
          'E' => 'e. Clean the filter',
          'F' => 'f. All of the above'
        },
        correct: 'D'
      },
      '8' => {
        question: '8. My pool has a bad odor and is cloudy, what do I do? pH is 7.0, not sure what copper, calcium or phosphate levels are ?',
        answers: {
          'A' => 'a. Deep clean filter',
          'B' => 'b. Set controller to ionize',
          'C' => 'c. Must have numbers in order to determine root of problem',
          'D' => 'd. Algaecide 60 then non-chlorine shock'
        },
        correct: 'C'
      },
      '9' => {
        question: '9. My eyes started burning for the past week while swimming in my pool. This only started happening after we installed a new vinyl liner, how do I stop this ?',
        answers: {
          'A' => 'a. Lower copper to 0.3 ppm or below',
          'B' => 'b. Pour a gallon of bleach into the pool per 10,000 gallons of water',
          'C' => 'c. Repeat a and b for 6-8 weeks',
          'D' => 'd. Repeat a and b for 3 years',
          'E' => 'e. None of the above'
        },
        correct: 'C'
      },
      '10' => {
        question: '10. "My pool is cloudy but pH is 6.8, copper is 0.5 ppm, calcium is 500 ppm and phosphate is 0. I have had this system for 10 years. Why is that?" (Choose all that apply) ?',
        answers: {
          'A' => 'a. The water temperature is below 70F',
          'B' => 'b. DE filter powder in the pool',
          'C' => 'c. Descaling',
          'D' => 'd. Algae present in the pool',
          'E' => 'e. Media is low or worn out'
        },
        correct: 'B'
      }
    }
    if params[:quiz_number] == "1"
      @quiz = @quiz_1
    else 
      @quiz = @quiz_2
    end
  end
  
  def quiz_answer
    @points = 0
    @quiz = eval(params[:quiz])
    @quiz.each do |number, content|
      @quiz[number][:answered] = params[number] 
    end
  end
end
