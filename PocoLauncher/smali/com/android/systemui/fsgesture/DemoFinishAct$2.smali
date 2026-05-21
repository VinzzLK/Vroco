.class Lcom/android/systemui/fsgesture/DemoFinishAct$2;
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


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/DemoFinishAct;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 66
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/DemoFinishAct;->access$000(Lcom/android/systemui/fsgesture/DemoFinishAct;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 68
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.provision"

    const-string v2, "com.android.provision.activities.NavigationModePickerActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "IS_COMPLETE"

    .line 69
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 71
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    sget v0, Lcom/miui/home/gesturedemo/R$anim;->activity_start_enter:I

    sget v1, Lcom/miui/home/gesturedemo/R$anim;->activity_start_exit:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DemoFinishAct$2;->this$0:Lcom/android/systemui/fsgesture/DemoFinishAct;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
