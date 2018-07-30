package SemanticWeb::Schema::PerformingGroup;

# ABSTRACT: A performance group

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'PerformingGroup';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

A performance group, such as a band, an orchestra, or a circus.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
