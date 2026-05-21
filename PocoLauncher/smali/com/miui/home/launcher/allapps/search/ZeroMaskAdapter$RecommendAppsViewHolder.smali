.class Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;
.super Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$ViewHolder;
.source "ZeroMaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecommendAppsViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$ViewHolder<",
        "Lcom/miui/home/launcher/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field root:Landroidx/constraintlayout/widget/ConstraintLayout;

.field final synthetic this$0:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;

.field title:Lcom/miui/home/launcher/TitleTextView;


# direct methods
.method public static synthetic $r8$lambda$gleuM8rtJe6hOjlZtZqdUXhJ8lc(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->lambda$onBindHolder$2(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$j-_MyuzuljxJGkC6fffnOdGS3ww(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->lambda$onBindHolder$1(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oIPQQdhuQrxQASoTtv-IPv1VXec(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;Lcom/miui/home/launcher/AppInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->lambda$onBindHolder$0(Lcom/miui/home/launcher/AppInfo;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;Landroid/view/View;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->this$0:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;

    .line 107
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a00f0

    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p1, 0x7f0a022e

    .line 109
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->icon:Landroid/widget/ImageView;

    const p1, 0x7f0a03e9

    .line 110
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/TitleTextView;

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->title:Lcom/miui/home/launcher/TitleTextView;

    return-void
.end method

.method private synthetic lambda$onBindHolder$0(Lcom/miui/home/launcher/AppInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const-string v0, "ZeroMaskAdapter"

    if-eqz p2, :cond_0

    .line 142
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 144
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "icon drawable null to fetch cache: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "icon cache fetched failed: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$onBindHolder$1(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/View;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->this$0:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->access$000(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->this$0:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->access$000(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/Launcher;->onClick(Landroid/view/View;)V

    .line 155
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 156
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->title:Lcom/miui/home/launcher/TitleTextView;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->updateInstalledDot(Landroid/widget/TextView;Z)V

    .line 157
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindHolder$2(Landroid/view/View;)Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->this$0:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->access$000(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->this$0:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->access$000(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->onLongClick(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateInstalledDot(Landroid/widget/TextView;Z)V
    .locals 1

    .line 165
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f080662

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 166
    :goto_0
    invoke-virtual {p1, p0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onBindHolder(Lcom/miui/home/launcher/AppInfo;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 119
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isNewInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->this$0:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;

    invoke-static {v1}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->access$000(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 120
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindHolder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", showDot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZeroMaskAdapter"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->this$0:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;

    invoke-static {v2}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->access$000(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;)Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getTitleStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 122
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->title:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->title:Lcom/miui/home/launcher/TitleTextView;

    invoke-direct {p0, v2, v1}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->updateInstalledDot(Landroid/widget/TextView;Z)V

    .line 125
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 126
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->title:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->this$0:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;

    invoke-static {v4}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->access$100(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f06004f

    goto :goto_1

    :cond_2
    const v4, 0x7f0606d3

    :goto_1
    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->title:Lcom/miui/home/launcher/TitleTextView;

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x4

    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 132
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    .line 136
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "icon source copied failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 139
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->this$0:Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->access$000(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v1

    .line 140
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;Lcom/miui/home/launcher/AppInfo;)V

    .line 139
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    .line 151
    :goto_3
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 152
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindHolder(Ljava/lang/Object;I)V
    .locals 0

    .line 101
    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;->onBindHolder(Lcom/miui/home/launcher/AppInfo;I)V

    return-void
.end method
