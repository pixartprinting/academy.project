package main

import (
	"context"
	"fmt"
	"time"

	"github.com/aws/aws-lambda-go/lambda"
)

func main() {

	lambda.Start(NewHandler())
}

type Handler func(ctx context.Context) error

func NewHandler() Handler {

	/*********** INIT *************************/

	/*********** INVOKE *************************/

	return func(ctx context.Context) error {
		t0 := time.Now()

		fmt.Println("init execution")

		fmt.Printf("done in %v\n", time.Since(t0))

		return nil
	}
}
