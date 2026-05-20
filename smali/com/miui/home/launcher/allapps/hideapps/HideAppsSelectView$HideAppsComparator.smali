.class Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView$HideAppsComparator;
.super Ljava/lang/Object;
.source "HideAppsSelectView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HideAppsComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/home/launcher/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView$HideAppsComparator;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/AppInfo;)I
    .locals 1

    .line 291
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->isHideApp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->isHideApp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 293
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->isHideApp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->isHideApp()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 296
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView$HideAppsComparator;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getDefaultComparator()Lcom/miui/home/launcher/allapps/AppInfoComparator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AppInfoComparator;->compare(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/AppInfo;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 288
    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView$HideAppsComparator;->compare(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/AppInfo;)I

    move-result p0

    return p0
.end method
