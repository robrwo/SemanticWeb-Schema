use utf8;

package SemanticWeb::Schema::Periodical;

# ABSTRACT: A publication in any medium issued in successive parts bearing numerical or chronological designations and intended

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWorkSeries /;


use MooX::JSON_LD 'Periodical';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

A publication in any medium issued in successive parts bearing numerical or
chronological designations and intended, such as a magazine, scholarly
journal, or newspaper to continue indefinitely. See also [blog
post](http://blog.schema.org/2014/09/schemaorg-support-for-bibliographic_2.
html).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWorkSeries>

=cut

1;
