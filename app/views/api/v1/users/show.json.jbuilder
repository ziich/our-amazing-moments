json.extract! @user, :id, :name, :avatar
json.date @user.created_at.strftime("%m/%d/%y")
