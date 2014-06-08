.class Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;
.super Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub;
.source "BluetoothLEClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bluetoothle/BluetoothLEClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothLEClientCharUpdationCallBack"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothLEClientCharUpdationCallBack"


# instance fields
.field final synthetic this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;


# direct methods
.method constructor <init>(Lcom/samsung/bluetoothle/BluetoothLEClientService;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    invoke-direct {p0}, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack$Stub;-><init>()V

    .line 79
    return-void
.end method


# virtual methods
.method public onDiscoverCharacteristics(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "address"
    .parameter "charPaths"

    .prologue
    const/4 v4, 0x0

    .line 124
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    const-string v1, "BluetoothLEClientCharUpdationCallBack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDiscoverCharacteristics length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$000(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->isDiscoverCharByUUID:Z
    invoke-static {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$200(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    aget-object v1, p2, v4

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->updateSingleChar(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$300(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #setter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->isDiscoverCharByUUID:Z
    invoke-static {v0, v4}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$202(Lcom/samsung/bluetoothle/BluetoothLEClientService;Z)Z

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    invoke-virtual {v0, v4}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->setCharDiscoveryProgress(Z)V

    .line 137
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_1
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->updateServiceChars(Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$400(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onReadCharValue(Ljava/lang/String;)V
    .locals 3
    .parameter "charPath"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    const-string v1, "BluetoothLEClientCharUpdationCallBack"

    const-string v2, "onReadCharValue"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$000(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onWatcherValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "charPath"
    .parameter "value"

    .prologue
    .line 110
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    const-string v3, "BluetoothLEClientCharUpdationCallBack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWatcherValueChanged char Path :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$000(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/bluetoothle/BluetoothLEClientChar;

    invoke-virtual {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->getCharPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    check-cast v0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;

    .line 116
    .restart local v0       #clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    const-string v2, "Value"

    invoke-virtual {v0, v2, p2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    invoke-virtual {v2, v0}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->onWatcherValueChanged(Lcom/samsung/bluetoothle/BluetoothLEClientChar;)V

    .line 121
    :cond_0
    return-void

    .line 113
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onWriteCharValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "charPath"
    .parameter "status"

    .prologue
    .line 86
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    const-string v3, "BluetoothLEClientCharUpdationCallBack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWriteCharValue char Path :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$000(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    check-cast v0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;

    .line 91
    .restart local v0       #clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    invoke-virtual {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->getCharPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    invoke-virtual {v2, v0, p2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->onWriteCharValue(Lcom/samsung/bluetoothle/BluetoothLEClientChar;Ljava/lang/String;)V

    .line 95
    return-void

    .line 89
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onWriteClientConfigDesc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "charPath"
    .parameter "status"

    .prologue
    .line 98
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    const-string v3, "BluetoothLEClientCharUpdationCallBack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWriteClientConfigDesc char Path :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientService;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$000(Lcom/samsung/bluetoothle/BluetoothLEClientService;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientService;->mServiceChars:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    check-cast v0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;

    .line 103
    .restart local v0       #clientChar:Lcom/samsung/bluetoothle/BluetoothLEClientChar;
    invoke-virtual {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->getCharPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientService$BluetoothLEClientCharUpdationCallBack;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientService;

    invoke-virtual {v2, v0, p2}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->onWriteClientConfigDesc(Lcom/samsung/bluetoothle/BluetoothLEClientChar;Ljava/lang/String;)V

    .line 107
    return-void

    .line 101
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
