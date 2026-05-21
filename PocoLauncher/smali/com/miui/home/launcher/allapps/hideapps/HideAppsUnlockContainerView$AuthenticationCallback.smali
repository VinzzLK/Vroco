.class Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$AuthenticationCallback;
.super Ljava/lang/Object;
.source "HideAppsUnlockContainerView.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/hideapps/AuthenticationCallbackHideAppsLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthenticationCallback"
.end annotation


# instance fields
.field private weakViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$AuthenticationCallback;->weakViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAuthenticationCanceled()V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$AuthenticationCallback;->weakViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    if-nez p0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->unregisterFingerprint()V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .line 123
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$AuthenticationCallback;->weakViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    if-nez p0, :cond_0

    return-void

    .line 127
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;->NeedToUnlockWrongByFingerPrint:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;)V

    .line 128
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setVibrator(Landroid/content/Context;)V

    return-void
.end method

.method public onAuthenticationLockout()V
    .locals 2

    .line 133
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$AuthenticationCallback;->weakViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    if-nez p0, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->access$200(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->access$200(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->access$200(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1002b4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->unregisterFingerprint()V

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$AuthenticationCallback;->weakViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    if-nez p0, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->unregisterFingerprint()V

    .line 118
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)V

    return-void
.end method
