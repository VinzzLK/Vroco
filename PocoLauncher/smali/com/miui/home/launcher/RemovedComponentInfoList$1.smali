.class Lcom/miui/home/launcher/RemovedComponentInfoList$1;
.super Ljava/lang/Object;
.source "RemovedComponentInfoList.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/RemovedComponentInfoList;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/RemovedComponentInfoList;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/RemovedComponentInfoList;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/miui/home/launcher/RemovedComponentInfoList$1;->this$0:Lcom/miui/home/launcher/RemovedComponentInfoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/RemovedComponentInfoList$1;->apply(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 76
    iget-object p1, p0, Lcom/miui/home/launcher/RemovedComponentInfoList$1;->this$0:Lcom/miui/home/launcher/RemovedComponentInfoList;

    invoke-static {p1}, Lcom/miui/home/launcher/RemovedComponentInfoList;->access$000(Lcom/miui/home/launcher/RemovedComponentInfoList;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    const/4 p1, 0x0

    .line 78
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lcom/miui/home/launcher/RemovedComponentInfoList$1;->this$0:Lcom/miui/home/launcher/RemovedComponentInfoList;

    invoke-virtual {v2}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getReaderFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 80
    invoke-static {}, Lcom/miui/home/launcher/RemovedComponentInfoList;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error get BufferedReader"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_0

    .line 85
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "componentName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v3, p0, Lcom/miui/home/launcher/RemovedComponentInfoList$1;->this$0:Lcom/miui/home/launcher/RemovedComponentInfoList;

    invoke-static {v3}, Lcom/miui/home/launcher/RemovedComponentInfoList;->access$000(Lcom/miui/home/launcher/RemovedComponentInfoList;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 97
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_2
    :cond_0
    if-eqz v0, :cond_1

    .line 104
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->closeFileSafely(Ljava/io/Closeable;)V

    .line 106
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/RemovedComponentInfoList;->access$200()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    const/4 v0, 0x1

    .line 107
    :try_start_3
    invoke-static {v0}, Lcom/miui/home/launcher/RemovedComponentInfoList;->access$302(Z)Z

    .line 108
    invoke-static {}, Lcom/miui/home/launcher/RemovedComponentInfoList;->access$200()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 109
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
