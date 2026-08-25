#!/usr/bin/env bun
import process from "node:process"

const handle = process.env.ATPROTO_HANDLE
const password = process.env.ATPROTO_PASSWORD
if (!handle || !password) {
    throw new DOMException("ATPROTO_HANDLE and ATPROTO_PASSWORD required")
}

