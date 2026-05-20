.class public Lcom/ot/pubsub/b/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = "ConfigProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(I)I
    .locals 3

    .line 36
    sget-boolean v0, Lcom/ot/pubsub/util/j;->b:Z

    if-eqz v0, :cond_0

    .line 37
    sget-object p0, Lcom/ot/pubsub/b/n;->a:Ljava/lang/String;

    const-string v0, "debug upload mode, send events immediately"

    invoke-static {p0, v0}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 43
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ot/pubsub/b/e;->c()Ljava/util/Map;

    move-result-object v0

    add-int/lit8 p0, p0, 0x1

    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p0, 0xea60

    .line 49
    :goto_0
    sget-object v0, Lcom/ot/pubsub/b/n;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUploadInterval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ot/pubsub/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method
