import mongoose from "mongoose";

const Connection = async (username,password) => {
  const URL="mongodb+srv://getiebalew2020:Getie@123@cluster0.oxwxfmk.mongodb.net/?retryWrites=true&w=majority";
  try {
    await mongoose.connect(URL, {
      useNewUrlParser: true,
      useUnifiedTopology: true,
    });
    console.log('Database connected successfully');
  } catch (error) {
    console.log('Error while connecting to the database:', error);
  }
};

export default Connection;
