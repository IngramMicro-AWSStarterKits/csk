#!/bin/sh

# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

for f in *.yaml; do
  echo "Converting $f to JSON..."
  cfn-flip $f ${f%.yaml}.json
  rm $f
done
for f in *.yml; do
  echo "Converting $f to JSON..."
  cfn-flip $f ${f%.yml}.json
  rm $f
done
