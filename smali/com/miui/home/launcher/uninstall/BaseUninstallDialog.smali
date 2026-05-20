.class public abstract Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "BaseUninstallDialog.kt"


# instance fields
.field protected mAllShortcutInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCancelConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mCancelShortcutInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mDialogView:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mPositiveConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSecondShortcutInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mUninstallShortcutInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4Ry9HjT4A5inyRawsBYYnXQqUkE(Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->init$lambda-5$lambda-4(Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OM7R0Y_LP6llQPi-Ax7pjAdE6fQ(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->init$lambda-3(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QJqvHkhEYVJltUQvXySoa80PaTY(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->init$lambda-2(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z5xfXxUi3MSgroGnEYgfMNX9hw8(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->init$lambda-2$lambda-1(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wpMnnHnM4rrreFvNehnRRlb-rMs(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->init$lambda-2$lambda-0(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;Landroid/view/View;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allShortcutInfos"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mCancelShortcutInfos:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mUninstallShortcutInfos:Ljava/util/ArrayList;

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->init(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private final getNegativeButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x2

    .line 103
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const-string v0, "getButton(DialogInterface.BUTTON_NEGATIVE)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getPositiveButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x1

    .line 100
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const-string v0, "getButton(DialogInterface.BUTTON_POSITIVE)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final init(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0168

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.miui.home.launcher.uninstall.UninstallDialogViewContainer"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mDialogView:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    .line 55
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 56
    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mAllShortcutInfos:Ljava/util/List;

    .line 57
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 58
    iget-object v3, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v3}, Lcom/miui/home/launcher/uninstall/UninstallController;->isSecondConfirmationDialog(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mSecondShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mUninstallShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 71
    new-instance v0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mDialogView:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    if-eqz v0, :cond_2

    const v1, 0x7f0a0302

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    :cond_2
    if-eqz v2, :cond_5

    .line 78
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.market"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 82
    :cond_3
    new-instance v0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_4
    :goto_1
    const/16 p1, 0x8

    .line 79
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->setNegativeButTitle()V

    return-void
.end method

.method private static final init$lambda-2(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;Landroid/content/DialogInterface;)V
    .locals 1

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 66
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-direct {p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->getNegativeButton()Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final init$lambda-2$lambda-0(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->onPositiveClick(Lmiuix/appcompat/app/AlertDialog;)V

    return-void
.end method

.method private static final init$lambda-2$lambda-1(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->onNegativeClick(Lmiuix/appcompat/app/AlertDialog;)V

    return-void
.end method

.method private static final init$lambda-3(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final init$lambda-5$lambda-4(Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    const-string p2, "$context"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$allShortcutInfos"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 83
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/util/RiskAppReporter;->launch(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method


# virtual methods
.method public final getCancelShortcutInfos()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mCancelShortcutInfos:Ljava/util/ArrayList;

    return-object p0
.end method

.method protected final getMLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method public final onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "color_mode"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onMessageEvent(Lcom/miui/home/launcher/common/messages/CloseAllOverLauncherWindowMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 122
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public abstract onNegativeClick(Lmiuix/appcompat/app/AlertDialog;)V
.end method

.method public abstract onPositiveClick(Lmiuix/appcompat/app/AlertDialog;)V
.end method

.method public final reportData(Lcom/miui/home/launcher/ShortcutInfo;Z)V
    .locals 4

    if-eqz p1, :cond_7

    .line 141
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 142
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 143
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object p1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getGlobalHideAppItem()Z

    move-result p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getHideAppItem()Z

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_3

    .line 144
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v2

    :goto_2
    if-nez v3, :cond_7

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    if-nez v1, :cond_7

    if-eqz p2, :cond_6

    const-string p2, "click_cancel_when_hide_or_uninstall_app"

    goto :goto_3

    :cond_6
    const-string p2, "click_ok_when_hide_or_uninstall_app"

    :goto_3
    const-string v1, "launcher"

    .line 145
    invoke-static {p0, p1, v0, p2, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackWhenHideOrUninstallApp(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final setCancelConsumer(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mCancelConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public final setNegativeButTitle()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v2, 0x7f1000c4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, -0x2

    invoke-virtual {p0, v2, v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setPositiveButTitle(I)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setPositiveConsumer(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->mPositiveConsumer:Ljava/util/function/Consumer;

    return-void
.end method
