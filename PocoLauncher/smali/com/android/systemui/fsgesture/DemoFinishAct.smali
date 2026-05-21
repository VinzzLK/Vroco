.class public Lcom/android/systemui/fsgesture/DemoFinishAct;
.super Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;
.source "DemoFinishAct.java"


# instance fields
.field finishView:Landroid/widget/Button;

.field private isFromPro:Z

.field mIntroContainer:Landroid/widget/RelativeLayout;

.field replayView:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fsgesture/DemoFinishAct;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/android/systemui/fsgesture/DemoFinishAct;->isFromPro:Z

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 28
    invoke-super {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget p1, Lcom/miui/home/gesturedemo/R$layout;->fs_gesture_demo_final_view:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "DEMO_TYPE"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IS_FROM_PROVISION"

    const/4 v2, 0x0

    .line 34
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct;->isFromPro:Z

    .line 36
    sget p1, Lcom/miui/home/gesturedemo/R$id;->skip_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct;->replayView:Landroid/widget/Button;

    .line 37
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct;->replayView:Landroid/widget/Button;

    sget v1, Lcom/miui/home/gesturedemo/R$string;->fs_gesture_final_restart:I

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 39
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct;->replayView:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/fsgesture/DemoFinishAct$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/fsgesture/DemoFinishAct$1;-><init>(Lcom/android/systemui/fsgesture/DemoFinishAct;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget p1, Lcom/miui/home/gesturedemo/R$id;->confirm_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct;->finishView:Landroid/widget/Button;

    .line 62
    sget v0, Lcom/miui/home/gesturedemo/R$string;->fs_gesture_final_over:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 63
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct;->finishView:Landroid/widget/Button;

    new-instance v0, Lcom/android/systemui/fsgesture/DemoFinishAct$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/DemoFinishAct$2;-><init>(Lcom/android/systemui/fsgesture/DemoFinishAct;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    sget p1, Lcom/miui/home/gesturedemo/R$id;->intro_container:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct;->mIntroContainer:Landroid/widget/RelativeLayout;

    .line 78
    invoke-static {p1}, Lcom/android/systemui/fsgesture/GestureLineUtils;->createAndaddNavigationHandle(Landroid/widget/RelativeLayout;)Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;->mNavigationHandle:Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;->adjustButtonGroupBottomMargin()V

    return-void
.end method
