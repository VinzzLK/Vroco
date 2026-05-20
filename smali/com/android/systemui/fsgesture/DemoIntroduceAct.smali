.class public Lcom/android/systemui/fsgesture/DemoIntroduceAct;
.super Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;
.source "DemoIntroduceAct.java"


# instance fields
.field backBtn:Landroid/widget/Button;

.field mIntroContainer:Landroid/widget/RelativeLayout;

.field nextBtn:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$76eGFcQR-N9fOLYE_mugjtd8MKQ(Lcom/android/systemui/fsgesture/DemoIntroduceAct;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 30
    invoke-super {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget p1, Lcom/miui/home/gesturedemo/R$layout;->demo_intro_layout:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "IS_FROM_PROVISION"

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 36
    sget v0, Lcom/miui/home/gesturedemo/R$id;->confirm_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->nextBtn:Landroid/widget/Button;

    .line 37
    sget v2, Lcom/miui/home/gesturedemo/R$string;->fsg_demo_go_on:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 38
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->nextBtn:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/fsgesture/DemoIntroduceAct$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/fsgesture/DemoIntroduceAct$1;-><init>(Lcom/android/systemui/fsgesture/DemoIntroduceAct;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    sget p1, Lcom/miui/home/gesturedemo/R$id;->skip_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->backBtn:Landroid/widget/Button;

    .line 52
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 53
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->backBtn:Landroid/widget/Button;

    sget v0, Lcom/miui/home/gesturedemo/R$string;->fsg_demo_back:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 54
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->backBtn:Landroid/widget/Button;

    new-instance v0, Lcom/android/systemui/fsgesture/DemoIntroduceAct$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/DemoIntroduceAct$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/fsgesture/DemoIntroduceAct;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget p1, Lcom/miui/home/gesturedemo/R$id;->intro_container:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/systemui/fsgesture/DemoIntroduceAct;->mIntroContainer:Landroid/widget/RelativeLayout;

    .line 57
    invoke-static {p1}, Lcom/android/systemui/fsgesture/GestureLineUtils;->createAndaddNavigationHandle(Landroid/widget/RelativeLayout;)Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;->mNavigationHandle:Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;->adjustButtonGroupBottomMargin()V

    return-void
.end method
