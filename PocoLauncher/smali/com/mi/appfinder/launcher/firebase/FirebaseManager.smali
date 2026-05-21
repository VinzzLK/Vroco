.class public Lcom/mi/appfinder/launcher/firebase/FirebaseManager;
.super Ljava/lang/Object;
.source "FirebaseManager.java"


# static fields
.field private static final FIREBASE_MIUI_API_KEY:Ljava/lang/String; = "AIzaSyB2JDwRH0JkFz61laGlpkUqBP-M1tDCs0Y"

.field private static final FIREBASE_MIUI_APP_ID:Ljava/lang/String; = "1:583617035067:android:f62e0cc8504e98c934151e"

.field private static final FIREBASE_MIUI_PROJECT_ID:Ljava/lang/String; = "miui-home-8d9f8"

.field private static final FIREBASE_MIUI_STORAGE_BUCKET:Ljava/lang/String; = "miui-home-8d9f8.appspot.com"

.field private static final FIREBASE_POCO_API_KEY:Ljava/lang/String; = "AIzaSyDNpaGVddm_X7r7vEvqWza1CPkMppxNQhE"

.field private static final FIREBASE_POCO_APP_ID:Ljava/lang/String; = "1:364312880684:android:a354ed4315c03319"

.field private static final FIREBASE_POCO_PROJECT_ID:Ljava/lang/String; = "miui-global-launcher"

.field private static final FIREBASE_POCO_STORAGE_BUCKET:Ljava/lang/String; = "miui-global-launcher.appspot.com"

.field private static final TAG:Ljava/lang/String; = "HomeFinderFirebase"

.field private static firebaseApp:Lcom/google/firebase/FirebaseApp; = null

.field private static volatile mUserExperienceStatus:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initFirebase()V
    .locals 4

    .line 45
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/appfinder/launcher/FinderController;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    sget-object v1, Lcom/mi/appfinder/launcher/firebase/FirebaseManager;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    const-string v2, "HomeFinderFirebase"

    if-eqz v1, :cond_1

    const-string v0, "No need to init firebase"

    .line 50
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "Start to init firebase"

    .line 53
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Lcom/mi/appfinder/launcher/utils/AppInfoUtils;->isPocoLauncher()Z

    move-result v1

    .line 56
    new-instance v2, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {v2}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    if-eqz v1, :cond_2

    const-string v3, "1:364312880684:android:a354ed4315c03319"

    goto :goto_0

    :cond_2
    const-string v3, "1:583617035067:android:f62e0cc8504e98c934151e"

    .line 57
    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v2

    if-eqz v1, :cond_3

    const-string v3, "AIzaSyDNpaGVddm_X7r7vEvqWza1CPkMppxNQhE"

    goto :goto_1

    :cond_3
    const-string v3, "AIzaSyB2JDwRH0JkFz61laGlpkUqBP-M1tDCs0Y"

    .line 58
    :goto_1
    invoke-virtual {v2, v3}, Lcom/google/firebase/FirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v2

    if-eqz v1, :cond_4

    const-string v3, "miui-global-launcher"

    goto :goto_2

    :cond_4
    const-string v3, "miui-home-8d9f8"

    .line 59
    :goto_2
    invoke-virtual {v2, v3}, Lcom/google/firebase/FirebaseOptions$Builder;->setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v2

    if-eqz v1, :cond_5

    const-string v1, "miui-global-launcher.appspot.com"

    goto :goto_3

    :cond_5
    const-string v1, "miui-home-8d9f8.appspot.com"

    .line 60
    :goto_3
    invoke-virtual {v2, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setStorageBucket(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v1

    .line 62
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/appfinder/launcher/FinderController;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 63
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;)Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    sput-object v1, Lcom/mi/appfinder/launcher/firebase/FirebaseManager;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 65
    invoke-static {}, Lcom/mi/appfinder/launcher/privacy/PrivacyManager;->reportFirebasePrivacy()V

    .line 67
    invoke-static {v0}, Lcom/mi/appfinder/launcher/firebase/FirebaseManager;->registerUserExperience(Landroid/content/Context;)V

    return-void
.end method

.method public static publishException(Ljava/lang/Throwable;)V
    .locals 2

    .line 78
    sget-object v0, Lcom/mi/appfinder/launcher/firebase/FirebaseManager;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    sget-boolean v0, Lcom/mi/appfinder/launcher/firebase/FirebaseManager;->mUserExperienceStatus:Z

    if-nez v0, :cond_1

    return-void

    .line 84
    :cond_1
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HomeFinderFirebase"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static registerUserExperience(Landroid/content/Context;)V
    .locals 3

    .line 72
    invoke-static {p0}, Lcom/mi/appfinder/launcher/privacy/UserExperienceObserver;->getUserExperienceStatus(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/mi/appfinder/launcher/firebase/FirebaseManager;->updateFirebaseReport(Z)V

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "upload_log_pref"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/mi/appfinder/launcher/privacy/UserExperienceObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2}, Lcom/mi/appfinder/launcher/privacy/UserExperienceObserver;-><init>(Landroid/os/Handler;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static updateFirebaseReport(Z)V
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update report to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeFinderFirebase"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sput-boolean p0, Lcom/mi/appfinder/launcher/firebase/FirebaseManager;->mUserExperienceStatus:Z

    .line 91
    sget-object v0, Lcom/mi/appfinder/launcher/firebase/FirebaseManager;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCrashlyticsCollectionEnabled(Z)V

    :cond_0
    return-void
.end method
