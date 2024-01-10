use utf8;

package SemanticWeb::Schema::contactPoints;

# ABSTRACT: A contact point for a person or organization.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'contactPoints';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A contact point for a person or organization.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
