.class public final Lcom/miui/home/settings/HideAppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HideAppAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/HideAppAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/settings/HideAppAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAllHideAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mRemoveTipDialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public static synthetic $r8$lambda$Hp26mFAll_XMvfz_3boHtUkuLiE(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/settings/HideAppAdapter;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/settings/HideAppAdapter;->onBindViewHolder$lambda-5(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/settings/HideAppAdapter;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$N0sw2_0-wlYPDdutlieP4PV6nf0(Lcom/miui/home/settings/HideAppAdapter;Lcom/miui/home/launcher/AppInfo;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/settings/HideAppAdapter;->onBindViewHolder$lambda-5$lambda-0(Lcom/miui/home/settings/HideAppAdapter;Lcom/miui/home/launcher/AppInfo;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZTpfkQDxA-HyHpRRomutGjS3sNs(Lcom/miui/home/settings/HideAppAdapter;Lcom/miui/home/launcher/AppInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/settings/HideAppAdapter;->onBindViewHolder$lambda-5$lambda-4$lambda-3(Lcom/miui/home/settings/HideAppAdapter;Lcom/miui/home/launcher/AppInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iP0V2NuAtNg9j25C_084AxNikOM(Landroid/widget/CompoundButton;Lcom/miui/home/launcher/AppInfo;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/settings/HideAppAdapter;->onBindViewHolder$lambda-5$lambda-1(Landroid/widget/CompoundButton;Lcom/miui/home/launcher/AppInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jZvUqQaS9YOS_BHXN_-50tOynSk(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/settings/HideAppAdapter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/settings/HideAppAdapter;->onBindViewHolder$lambda-5$lambda-4(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/settings/HideAppAdapter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/HideAppAdapter;->mAllHideAppList:Ljava/util/ArrayList;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "from(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/settings/HideAppAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 31
    iput-object p1, p0, Lcom/miui/home/settings/HideAppAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getMContext$p(Lcom/miui/home/settings/HideAppAdapter;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/settings/HideAppAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private static final onBindViewHolder$lambda-5(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/settings/HideAppAdapter;Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string v0, "$appInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 51
    new-instance p3, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$1;

    invoke-direct {p3, p1, p0}, Lcom/miui/home/settings/HideAppAdapter$onBindViewHolder$1$1;-><init>(Lcom/miui/home/settings/HideAppAdapter;Lcom/miui/home/launcher/AppInfo;)V

    new-instance v1, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p0, p2}, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/settings/HideAppAdapter;Lcom/miui/home/launcher/AppInfo;Landroid/widget/CompoundButton;)V

    invoke-static {p3, v1, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    goto :goto_1

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getDeleteTip(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/util/Pair;

    move-result-object p3

    .line 66
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p1, Lcom/miui/home/settings/HideAppAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 67
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz p3, :cond_1

    .line 68
    iget-object v2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz p3, :cond_2

    .line 69
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    :cond_2
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    const v0, 0x7f1000c4

    .line 70
    new-instance v1, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p0}, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/widget/CompoundButton;Lcom/miui/home/launcher/AppInfo;)V

    invoke-virtual {p3, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f1004d7

    .line 75
    new-instance v0, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/settings/HideAppAdapter;)V

    invoke-virtual {p2, p3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 66
    iput-object p0, p1, Lcom/miui/home/settings/HideAppAdapter;->mRemoveTipDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p0, :cond_3

    .line 89
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method private static final onBindViewHolder$lambda-5$lambda-0(Lcom/miui/home/settings/HideAppAdapter;Lcom/miui/home/launcher/AppInfo;Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$appInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 58
    iget-object p0, p0, Lcom/miui/home/settings/HideAppAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f10044c

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 59
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackRestoreHiddenApp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private static final onBindViewHolder$lambda-5$lambda-1(Landroid/widget/CompoundButton;Lcom/miui/home/launcher/AppInfo;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p2, 0x1

    .line 71
    invoke-virtual {p0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 72
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 73
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "click_cancel_when_hide_or_uninstall_app"

    const-string v0, "management"

    .line 72
    invoke-static {p0, p2, p1, p3, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackWhenHideOrUninstallApp(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-5$lambda-4(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/settings/HideAppAdapter;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 76
    new-instance p2, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1, p0}, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/settings/HideAppAdapter;Lcom/miui/home/launcher/AppInfo;)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    const-string p3, "click_ok_when_hide_or_uninstall_app"

    const-string v0, "management"

    .line 85
    invoke-static {p1, p2, p0, p3, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackWhenHideOrUninstallApp(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-5$lambda-4$lambda-3(Lcom/miui/home/settings/HideAppAdapter;Lcom/miui/home/launcher/AppInfo;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$appInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mContext.contentResolver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 78
    iget-object v3, p0, Lcom/miui/home/settings/HideAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v3

    iget-object v4, p1, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 77
    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/LauncherHideApp;->addHideApp(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getHiddenAppNotificationsItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object p0, p0, Lcom/miui/home/settings/HideAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherHideApp;->closeHiddenAppNotifications(Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final dismissDialog()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter;->mRemoveTipDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 97
    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter;->mRemoveTipDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/miui/home/settings/HideAppAdapter;->mRemoveTipDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_2
    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/miui/home/settings/HideAppAdapter;->mAllHideAppList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/HideAppAdapter;->onBindViewHolder(Lcom/miui/home/settings/HideAppAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/settings/HideAppAdapter$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter;->mAllHideAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "mAllHideAppList[position]"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    .line 46
    invoke-virtual {p1}, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->getName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p1}, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {p1}, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->getSwitchBut()Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/BaseAppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v1

    const-string v2, "appInfo.toComponentKey()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherHideApp;->isHideApp(Lcom/miui/home/launcher/util/ComponentKey;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 49
    invoke-virtual {p1}, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->getSwitchBut()Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, p0}, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/settings/HideAppAdapter;)V

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->getName()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;->getSwitchBut()Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/miui/home/launcher/AccessibilityAdaptHelper;->setSwitchItemViewAccessibility(Landroid/view/View;Ljava/lang/String;Lmiuix/slidingwidget/widget/SlidingButton;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/HideAppAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/settings/HideAppAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/settings/HideAppAdapter$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance p2, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;

    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "mLayoutInflater.inflate(\u2026list_item, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/miui/home/settings/HideAppAdapter$ViewHolder;-><init>(Lcom/miui/home/settings/HideAppAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter;->mAllHideAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter;->mAllHideAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
