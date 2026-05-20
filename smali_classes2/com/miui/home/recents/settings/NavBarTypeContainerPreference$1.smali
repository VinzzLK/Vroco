.class Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;
.super Ljava/lang/Object;
.source "NavBarTypeContainerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    invoke-static {v0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$000(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/NavigationBarTypeView;

    move-result-object v0

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    invoke-static {v0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$100(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    invoke-static {v0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$100(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/GestureLearnAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/util/SafeTimeIntervalDetection;->isMoreThanTimeInterval()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "NavBarTypeContainerPreference"

    const-string p1, "Click too fast"

    .line 80
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    invoke-static {v0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$200(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/NavigationBarTypeView;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 84
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    .line 85
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isUseMiuiHomeAsDefaultHome(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isUsePocoHomeAsCurrentDefaultHome()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    invoke-static {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$300(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V

    goto :goto_0

    .line 88
    :cond_2
    invoke-static {}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->getInstance()Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->isNeedShowNavGuide()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    invoke-static {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$400(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V

    .line 90
    invoke-static {}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackShowLearnGesturesDialogEvent()V

    goto :goto_0

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$500(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Z)V

    .line 93
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    invoke-static {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$200(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/NavigationBarTypeView;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$600(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Lcom/miui/home/recents/settings/NavigationBarTypeView;)V

    goto :goto_0

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$500(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Z)V

    .line 97
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    invoke-static {p0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$700(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/NavigationBarTypeView;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$600(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Lcom/miui/home/recents/settings/NavigationBarTypeView;)V

    .line 99
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performClickNavBarTypePreference(Landroid/view/View;)V

    :cond_5
    :goto_1
    return-void
.end method
