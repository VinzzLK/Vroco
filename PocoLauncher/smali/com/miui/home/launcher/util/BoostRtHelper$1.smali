.class Lcom/miui/home/launcher/util/BoostRtHelper$1;
.super Ljava/lang/Object;
.source "BoostRtHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/util/BoostRtHelper;->boostThreadInternal(JLjava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/util/BoostRtHelper;

.field final synthetic val$duration:J

.field final synthetic val$mode:I

.field final synthetic val$threadIds:[I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/util/BoostRtHelper;[IJI)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->this$0:Lcom/miui/home/launcher/util/BoostRtHelper;

    iput-object p2, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->val$threadIds:[I

    iput-wide p3, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->val$duration:J

    iput p5, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->this$0:Lcom/miui/home/launcher/util/BoostRtHelper;

    iget-object v1, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->val$threadIds:[I

    iget-wide v2, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->val$duration:J

    iget p0, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->val$mode:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/miui/home/launcher/util/BoostRtHelper;->access$000(Lcom/miui/home/launcher/util/BoostRtHelper;[IJI)V

    return-void
.end method
