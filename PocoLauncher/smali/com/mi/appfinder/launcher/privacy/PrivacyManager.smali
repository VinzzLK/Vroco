.class public Lcom/mi/appfinder/launcher/privacy/PrivacyManager;
.super Ljava/lang/Object;
.source "PrivacyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeFinderPrivacy"


# direct methods
.method public static synthetic $r8$lambda$XI5dZMzbr5z2LxLJdhrQ9gkVtZk(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0}, Lcom/mi/appfinder/launcher/privacy/PrivacyManager;->lambda$reportFirebasePrivacy$0(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$reportFirebasePrivacy$0(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "HomeFinderPrivacy"

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 31
    invoke-static {p0}, Lcom/mi/appfinder/launcher/privacy/PrivacyManager;->reportFirebaseAgree(Ljava/lang/String;)V

    const-string p0, "Installation ID: "

    .line 32
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "Unable to get Installation ID"

    .line 34
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static reportFirebaseAgree(Ljava/lang/String;)V
    .locals 1

    .line 41
    new-instance v0, Lcom/mi/appfinder/launcher/request/PrivacyApi;

    invoke-direct {v0, p0}, Lcom/mi/appfinder/launcher/request/PrivacyApi;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/appfinder/launcher/request/PrivacyApi;->getCall()Lokhttp3/Call;

    move-result-object p0

    new-instance v0, Lcom/mi/appfinder/launcher/privacy/PrivacyManager$1;

    invoke-direct {v0}, Lcom/mi/appfinder/launcher/privacy/PrivacyManager$1;-><init>()V

    .line 42
    invoke-interface {p0, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static reportFirebasePrivacy()V
    .locals 2

    .line 23
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->isPrivacyTimestampReported()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-static {}, Lcom/google/firebase/installations/FirebaseInstallations;->getInstance()Lcom/google/firebase/installations/FirebaseInstallations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/FirebaseInstallations;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/mi/appfinder/launcher/privacy/PrivacyManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mi/appfinder/launcher/privacy/PrivacyManager$$ExternalSyntheticLambda0;

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
