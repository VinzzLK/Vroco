.class Lcom/ot/pubsub/b/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ot/pubsub/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/ot/pubsub/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 86
    new-instance v0, Lcom/ot/pubsub/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ot/pubsub/b/a;-><init>(Lcom/ot/pubsub/b/b;)V

    sput-object v0, Lcom/ot/pubsub/b/a$a;->a:Lcom/ot/pubsub/b/a;

    return-void
.end method

.method static synthetic a()Lcom/ot/pubsub/b/a;
    .locals 1

    .line 85
    sget-object v0, Lcom/ot/pubsub/b/a$a;->a:Lcom/ot/pubsub/b/a;

    return-object v0
.end method
