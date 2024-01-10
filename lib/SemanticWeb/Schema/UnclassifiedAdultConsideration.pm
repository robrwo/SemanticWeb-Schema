use utf8;

package SemanticWeb::Schema::UnclassifiedAdultConsideration;

# ABSTRACT: The item is suitable only for adults

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'UnclassifiedAdultConsideration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The item is suitable only for adults, without indicating why. Due to
widespread use of "adult" as a euphemism for "sexual", many such items are
likely suited also for the SexualContentConsideration code.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
