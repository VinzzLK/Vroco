.class Lcom/android/systemui/fsgesture/DemoIntroduceAct$1;
.super Ljava/lang/Object;
.source "DemoIntroduceAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/DemoIntroduceAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/DemoIntroduceAct;

.field final synthetic val$isFromPro:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/DemoIntroduceAct;Z)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoIntroduceAct;

    iput-boolean p2, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$1;->val$isFromPro:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 41
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 42
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoIntroduceAct;

    const-class v1, Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "DEMO_TYPE"

    const-string v1, "DEMO_FULLY_SHOW"

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "FULLY_SHOW_STEP"

    const/4 v1, 0x1

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$1;->val$isFromPro:Z

    const-string v1, "IS_FROM_PROVISION"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoIntroduceAct;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 47
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$1;->this$0:Lcom/android/systemui/fsgesture/DemoIntroduceAct;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
