use utf8;

package SemanticWeb::Schema::trainName;

# ABSTRACT: The name of the train (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'trainName';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The name of the train (e.g. The Orient Express).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
