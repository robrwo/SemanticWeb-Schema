use utf8;

package SemanticWeb::Schema::workPerformed;

# ABSTRACT: A work performed in some event

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'workPerformed';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A work performed in some event, for example a play performed in a
TheaterEvent.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
