use utf8;

package SemanticWeb::Schema::object;

# ABSTRACT: The object upon which the action is carried out

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'object';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The object upon which the action is carried out, whose state is kept intact
or changed. Also known as the semantic roles patient, affected or undergoer
(which change their state) or theme (which doesn't). E.g. John read *a
book*.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
