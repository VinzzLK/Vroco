.class final Lcom/ot/pubsub/c/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ot/pubsub/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/ot/pubsub/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/ot/pubsub/c/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ot/pubsub/c/f;-><init>(Lcom/ot/pubsub/c/g;)V

    sput-object v0, Lcom/ot/pubsub/c/f$a;->a:Lcom/ot/pubsub/c/f;

    return-void
.end method

.method static synthetic a()Lcom/ot/pubsub/c/f;
    .locals 1

    .line 37
    sget-object v0, Lcom/ot/pubsub/c/f$a;->a:Lcom/ot/pubsub/c/f;

    return-object v0
.end method
