.class Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;
.super Ljava/lang/Object;
.source "FsGestureBackDemoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->finishGestureBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 287
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$300(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I

    move-result v0

    const-string v1, "IS_FROM_PROVISION"

    const-string v2, "DEMO_TYPE"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 288
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    const-class v4, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$1500(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x2

    const-string v3, "DEMO_STEP"

    .line 290
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$1600(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 292
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    sget v1, Lcom/miui/home/gesturedemo/R$anim;->activity_start_enter:I

    sget v2, Lcom/miui/home/gesturedemo/R$anim;->activity_start_exit:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$1500(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "DEMO_FULLY_SHOW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    const-class v4, Lcom/android/systemui/fsgesture/DemoFinishAct;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$1500(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->access$1600(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 299
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    sget v1, Lcom/miui/home/gesturedemo/R$anim;->activity_start_enter:I

    sget v2, Lcom/miui/home/gesturedemo/R$anim;->activity_start_exit:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 303
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
