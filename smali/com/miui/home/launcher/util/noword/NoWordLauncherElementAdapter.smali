.class public Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;
.super Ljava/lang/Object;
.source "NoWordLauncherElementAdapter.kt"

# interfaces
.implements Lcom/miui/home/launcher/util/noword/NoWordLauncherElementContent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/home/launcher/util/noword/NoWordLauncherElementContent;"
    }
.end annotation


# instance fields
.field private final mBindElement:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const-string v0, "mBindElement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mBindElement:Landroid/view/View;

    .line 23
    new-instance v0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter$1;-><init>(Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method public static final synthetic access$initBindElementChild(Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->initBindElementChild()V

    return-void
.end method

.method public static final synthetic access$setMLauncher$p(Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method private final initBindElementChild()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isElementInEdit()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->onEditModeChange(Z)V

    return-void
.end method

.method private final isElementInEdit()Z
    .locals 2

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInLayoutPreviewMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final isSkipTitleDraw()Z
    .locals 1

    .line 95
    invoke-interface {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementContent;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isElementInEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isOnlyWidgetNoWordModel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isElementInEdit()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final getMBindElement()Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 17
    iget-object p0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mBindElement:Landroid/view/View;

    return-object p0
.end method

.method public final invalidateBindElement()V
    .locals 1

    .line 55
    invoke-interface {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementContent;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->invalidateViewWhenEditModeChange()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final invalidateBindElementWhenLauncherInEditMode()V
    .locals 1

    .line 65
    invoke-interface {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementContent;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isElementInEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->invalidateViewWhenEditModeChange()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public invalidateViewWhenEditModeChange()Landroid/view/View;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->mBindElement:Landroid/view/View;

    return-object p0
.end method

.method public final isSkipDraw(Landroid/view/View;)Z
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isSkipTitleDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-interface {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementContent;->titleViewContainerId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onBindElementFinishInflate()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->initBindElementChild()V

    return-void
.end method

.method public final onEditModeChange(Z)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->invalidateBindElement()V

    return-void
.end method
