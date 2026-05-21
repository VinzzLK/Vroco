.class Lcom/miui/home/recents/views/SmallWindowCrop$1;
.super Ljava/lang/Object;
.source "SmallWindowCrop.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/views/SmallWindowCrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/SmallWindowCrop;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/SmallWindowCrop;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop$1;->this$0:Lcom/miui/home/recents/views/SmallWindowCrop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/miui/home/recents/views/SmallWindowCrop$1;->this$0:Lcom/miui/home/recents/views/SmallWindowCrop;

    invoke-static {p1}, Lcom/miui/home/recents/views/SmallWindowCrop;->access$000(Lcom/miui/home/recents/views/SmallWindowCrop;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 136
    invoke-static {}, Lcom/miui/home/recents/views/SmallWindowCrop;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "release in non-hot areas"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p0, p0, Lcom/miui/home/recents/views/SmallWindowCrop$1;->this$0:Lcom/miui/home/recents/views/SmallWindowCrop;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/SmallWindowCrop;->resetValue()V

    :cond_0
    return-void
.end method
