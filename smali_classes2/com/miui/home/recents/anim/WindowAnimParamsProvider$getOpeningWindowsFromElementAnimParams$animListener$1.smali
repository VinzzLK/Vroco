.class public final Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getOpeningWindowsFromElementAnimParams$animListener$1;
.super Ljava/lang/Object;
.source "WindowAnimParamsProvider.kt"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getOpeningWindowsFromElementAnimParams(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)Lcom/miui/home/recents/anim/AllElementParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $launcher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getOpeningWindowsFromElementAnimParams$animListener$1;->$launcher:Lcom/miui/home/launcher/Launcher;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 149
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider$getOpeningWindowsFromElementAnimParams$animListener$1;->$launcher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    :cond_0
    return-void
.end method
