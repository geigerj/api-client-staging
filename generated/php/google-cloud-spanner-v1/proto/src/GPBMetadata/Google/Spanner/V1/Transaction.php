<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/spanner/v1/transaction.proto

namespace GPBMetadata\Google\Spanner\V1;

class Transaction
{
    public static $is_initialized = false;

    public static function initOnce() {
        $pool = \Google\Protobuf\Internal\DescriptorPool::getGeneratedPool();

        if (static::$is_initialized == true) {
          return;
        }
        \GPBMetadata\Google\Api\Annotations::initOnce();
        \GPBMetadata\Google\Protobuf\Duration::initOnce();
        \GPBMetadata\Google\Protobuf\Timestamp::initOnce();
        $pool->internalAddGeneratedFile(hex2bin(
            "0adb070a23676f6f676c652f7370616e6e65722f76312f7472616e736163" .
            "74696f6e2e70726f746f1211676f6f676c652e7370616e6e65722e76311a" .
            "1e676f6f676c652f70726f746f6275662f6475726174696f6e2e70726f74" .
            "6f1a1f676f6f676c652f70726f746f6275662f74696d657374616d702e70" .
            "726f746f22e0030a125472616e73616374696f6e4f7074696f6e7312450a" .
            "0a726561645f777269746518012001280b322f2e676f6f676c652e737061" .
            "6e6e65722e76312e5472616e73616374696f6e4f7074696f6e732e526561" .
            "645772697465480012430a09726561645f6f6e6c7918022001280b322e2e" .
            "676f6f676c652e7370616e6e65722e76312e5472616e73616374696f6e4f" .
            "7074696f6e732e526561644f6e6c7948001a0b0a09526561645772697465" .
            "1aa8020a08526561644f6e6c7912100a067374726f6e6718012001280848" .
            "0012380a126d696e5f726561645f74696d657374616d7018022001280b32" .
            "1a2e676f6f676c652e70726f746f6275662e54696d657374616d70480012" .
            "320a0d6d61785f7374616c656e65737318032001280b32192e676f6f676c" .
            "652e70726f746f6275662e4475726174696f6e480012340a0e726561645f" .
            "74696d657374616d7018042001280b321a2e676f6f676c652e70726f746f" .
            "6275662e54696d657374616d70480012340a0f65786163745f7374616c65" .
            "6e65737318052001280b32192e676f6f676c652e70726f746f6275662e44" .
            "75726174696f6e4800121d0a1572657475726e5f726561645f74696d6573" .
            "74616d7018062001280842110a0f74696d657374616d705f626f756e6442" .
            "060a046d6f6465224d0a0b5472616e73616374696f6e120a0a0269641801" .
            "2001280c12320a0e726561645f74696d657374616d7018022001280b321a" .
            "2e676f6f676c652e70726f746f6275662e54696d657374616d7022a4010a" .
            "135472616e73616374696f6e53656c6563746f72123b0a0a73696e676c65" .
            "5f75736518012001280b32252e676f6f676c652e7370616e6e65722e7631" .
            "2e5472616e73616374696f6e4f7074696f6e734800120c0a026964180220" .
            "01280c480012360a05626567696e18032001280b32252e676f6f676c652e" .
            "7370616e6e65722e76312e5472616e73616374696f6e4f7074696f6e7348" .
            "00420a0a0873656c6563746f72427f0a15636f6d2e676f6f676c652e7370" .
            "616e6e65722e763142105472616e73616374696f6e50726f746f50015a38" .
            "676f6f676c652e676f6c616e672e6f72672f67656e70726f746f2f676f6f" .
            "676c65617069732f7370616e6e65722f76313b7370616e6e6572aa021747" .
            "6f6f676c652e436c6f75642e5370616e6e65722e5631620670726f746f33"
        ));

        static::$is_initialized = true;
    }
}
