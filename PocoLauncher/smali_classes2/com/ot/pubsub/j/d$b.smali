.class Lcom/ot/pubsub/j/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ot/pubsub/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-boolean p1, p0, Lcom/ot/pubsub/j/d$b;->a:Z

    .line 182
    iput-boolean p2, p0, Lcom/ot/pubsub/j/d$b;->b:Z

    return-void
.end method
