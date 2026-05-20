.class Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$1;
.super Ljava/lang/Object;
.source "NavigationBarTypePreferenceFragment.java"

# interfaces
.implements Lcom/miui/home/recents/SpecialDeviceFoldManager$FoldedStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$1;->this$0:Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpand()V
    .locals 1

    const-string p0, "NavigationBarTypePreferenceFragment"

    const-string v0, "onExpand-- "

    .line 537
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFold()V
    .locals 2

    const-string v0, "NavigationBarTypePreferenceFragment"

    const-string v1, "onFold-- "

    .line 531
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$1;->this$0:Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;

    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->dismissGestureLearnAlertDialog()V

    return-void
.end method
