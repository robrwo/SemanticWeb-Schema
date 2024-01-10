use utf8;

package SemanticWeb::Schema::CompletedActionStatus;

# ABSTRACT: An action that has already taken place.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'CompletedActionStatus';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An action that has already taken place.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
