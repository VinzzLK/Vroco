.class Lcom/android/systemui/fsgesture/DemoFinishAct$1;
.super Ljava/lang/Object;
.source "DemoFinishAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/DemoFinishAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

.field final synthetic val$demoType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/DemoFinishAct;Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    iput-object p2, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 42
    const-class p1, Lcom/android/systemui/fsgesture/HomeDemoAct;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 43
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    const-string v2, "DEMO_TO_HOME"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "DEMO_TYPE"

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    const-string v3, "DEMO_TO_RECENTTASK"

    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    const-string v3, "DEMO_FULLY_SHOW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 49
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v1, "FULLY_SHOW_STEP"

    .line 50
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/DemoFinishAct;->access$000(Lcom/android/systemui/fsgesture/DemoFinishAct;)Z

    move-result p1

    const-string v1, "IS_FROM_PROVISION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    const-string v1, "FSG_BACK_GESTURE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 53
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    const-class v3, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 46
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->val$demoType:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 57
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    sget v0, Lcom/miui/home/gesturedemo/R$anim;->activity_start_enter:I

    sget v1, Lcom/miui/home/gesturedemo/R$anim;->activity_start_exit:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 58
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
