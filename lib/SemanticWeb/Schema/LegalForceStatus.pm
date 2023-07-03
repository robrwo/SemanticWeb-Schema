use utf8;

package SemanticWeb::Schema::LegalForceStatus;

# ABSTRACT: A list of possible statuses for the legal force of a legislation.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::StatusEnumeration /;


use MooX::JSON_LD 'LegalForceStatus';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.0';

=encoding utf8

=head1 DESCRIPTION

A list of possible statuses for the legal force of a legislation.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::StatusEnumeration>

=cut

1;
