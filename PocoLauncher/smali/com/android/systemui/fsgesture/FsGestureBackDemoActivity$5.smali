.class Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FsGestureBackDemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->finishGesture(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

.field final synthetic val$back:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;Z)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    iput-boolean p2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->val$back:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 236
    iget-boolean p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->val$back:Z

    if-eqz p1, :cond_0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$1200(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    goto :goto_1

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$300(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 240
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$1300(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$300(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 242
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {p1, v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$1300(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)V

    .line 245
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$002(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)I

    :goto_1
    return-void
.end method
