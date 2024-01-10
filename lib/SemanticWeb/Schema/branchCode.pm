use utf8;

package SemanticWeb::Schema::branchCode;

# ABSTRACT: A short textual code (also called "store code") that uniquely identifies a place of business

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'branchCode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A short textual code (also called "store code") that uniquely identifies a
place of business. The code is typically assigned by the parentOrganization
and used in structured URLs. For example, in the URL
http://www.starbucks.co.uk/store-locator/etc/detail/3047 the code "3047" is
a branchCode for a particular branch. 




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
