use utf8;

package SemanticWeb::Schema::Taxi;

# ABSTRACT: A taxi.

use Moo;

extends qw/ SemanticWeb::Schema::Service /;


use MooX::JSON_LD 'Taxi';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v8.0.1';

=encoding utf8

=head1 DESCRIPTION

A taxi.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Service>

=cut

1;
