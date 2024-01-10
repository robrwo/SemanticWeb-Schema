use utf8;

package SemanticWeb::Schema::UKTrust;

# ABSTRACT: UKTrust: Non-profit type referring to a UK trust.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'UKTrust';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

UKTrust: Non-profit type referring to a UK trust.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
