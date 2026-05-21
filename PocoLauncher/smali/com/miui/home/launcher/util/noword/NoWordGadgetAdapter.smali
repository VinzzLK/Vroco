.class public final Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;
.super Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;
.source "NoWordLauncherElementAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter<",
        "Lcom/miui/home/launcher/gadget/Gadget;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/gadget/Gadget;)V
    .locals 1

    const-string v0, "mBindElement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public invalidateViewWhenEditModeChange()Landroid/view/View;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->getMBindElement()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->invalidateViewWhenEditModeChange()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->getMBindElement()Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method
