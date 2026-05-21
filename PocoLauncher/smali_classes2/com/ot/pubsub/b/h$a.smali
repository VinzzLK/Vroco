.class Lcom/ot/pubsub/b/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ot/pubsub/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/ot/pubsub/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/ot/pubsub/b/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ot/pubsub/b/h;-><init>(Lcom/ot/pubsub/b/i;)V

    sput-object v0, Lcom/ot/pubsub/b/h$a;->a:Lcom/ot/pubsub/b/h;

    return-void
.end method

.method static synthetic a()Lcom/ot/pubsub/b/h;
    .locals 1

    .line 40
    sget-object v0, Lcom/ot/pubsub/b/h$a;->a:Lcom/ot/pubsub/b/h;

    return-object v0
.end method
