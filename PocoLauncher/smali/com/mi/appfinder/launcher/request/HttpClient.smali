.class public Lcom/mi/appfinder/launcher/request/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# static fields
.field private static final mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public static synthetic $r8$lambda$aUQtSg_-AHw61jI4pwz2IvIL4IA(Ljava/util/Map;)V
    .locals 0

    invoke-static {p0}, Lcom/mi/appfinder/launcher/request/HttpClient;->lambda$buildHttpClient$0(Ljava/util/Map;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 29
    invoke-static {}, Lcom/mi/appfinder/launcher/request/HttpClient;->buildHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/mi/appfinder/launcher/request/HttpClient;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildHttpClient()Lokhttp3/OkHttpClient;
    .locals 4

    .line 32
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lokhttp3/Dispatcher;

    sget-object v2, Lcom/mi/appfinder/launcher/thread/GlobalExecutors;->THREAD_POOL_IO:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v1, v2}, Lokhttp3/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 33
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    .line 34
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/mi/appfinder/launcher/request/HttpClient$1;

    invoke-direct {v1}, Lcom/mi/appfinder/launcher/request/HttpClient$1;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->proxySelector(Ljava/net/ProxySelector;)Lokhttp3/OkHttpClient$Builder;

    .line 55
    new-instance v1, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;

    invoke-direct {v1}, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;-><init>()V

    const-string v2, "r"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;->setReservedQueryKeys([Ljava/lang/String;)Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;

    move-result-object v1

    .line 59
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/appfinder/launcher/FinderController;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/mi/appfinder/launcher/R$array;->encrypt_domain_list:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;->setEncryptDomainList(Ljava/util/List;)Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v1, v2}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;->setDefaultEncrypt(Z)Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;

    move-result-object v1

    sget-object v2, Lcom/mi/appfinder/launcher/request/HttpClient$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mi/appfinder/launcher/request/HttpClient$$ExternalSyntheticLambda0;

    .line 63
    invoke-virtual {v1, v2}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;->setExceptionReporter(Lcom/mi/encrypt/okhttp/EncryptInterceptor$ExceptionReporter;)Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;->build()Lcom/mi/encrypt/okhttp/EncryptInterceptor;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 73
    invoke-static {}, Lcom/mi/appfinder/launcher/utils/FeatureEnableUtils;->isLogcatEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 75
    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 77
    :cond_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static getClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 81
    sget-object v0, Lcom/mi/appfinder/launcher/request/HttpClient;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private static synthetic lambda$buildHttpClient$0(Ljava/util/Map;)V
    .locals 3

    .line 64
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and value= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "encryptInterceptor"

    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method
