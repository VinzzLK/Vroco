.class public Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryDataFetcher;
.super Ljava/lang/Object;
.source "ServiceDeliveryDataFetcher.java"

# interfaces
.implements Lcom/miui/miuiwidget/servicedelivery/model/DataFetcher;


# instance fields
.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryDataFetcher;->gson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public fetch(Ljava/lang/String;)Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;
    .locals 6

    .line 17
    invoke-static {p1}, Lcom/miui/home/launcher/servicedeliver/ServiceDeliverDataHelper;->requestServiceDeliverData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ServiceDeliveryDataFetcher"

    if-eqz v0, :cond_0

    const-string p0, "fetched jsonString is empty"

    .line 19
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 23
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryDataFetcher;->gson:Lcom/google/gson/Gson;

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;

    const-string v0, "code"

    .line 24
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "message"

    .line 26
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 28
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " message "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "serviceDelivery"

    .line 30
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p0, "serviceDeliveryEntity is null"

    .line 32
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 35
    :cond_3
    iget-object p0, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryDataFetcher;->gson:Lcom/google/gson/Gson;

    const-class v0, Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/miuiwidget/servicedelivery/bean/ServiceDeliveryEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "decode json error"

    .line 37
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method
