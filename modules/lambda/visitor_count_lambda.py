import json
import boto3

def lambda_handler(event, context):
    dynamodb = boto3.resource('dynamodb')
    table_name = '<DYNAMODB_TABLE_NAME>'
    table = dynamodb.Table(table_name)

    response = table.update_item(
        Key={'CounterId': 'unique_counter_id'},
        UpdateExpression='SET VisitorCount = VisitorCount + :incr',
        ExpressionAttributeValues={':incr': 1},
        ReturnValues='UPDATED_NEW'
    )

    return {
        'statusCode': 200,
        'body': json.dumps({'VisitorCount': response['Attributes']['VisitorCount']})
    }
